.class Lcom/android/lineageos/applications/InstalledAppDetails$4;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/applications/InstalledAppDetails;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/lineageos/applications/InstalledAppDetails;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/applications/InstalledAppDetails;

    .prologue
    .line 628
    iput-object p1, p0, Lcom/android/lineageos/applications/InstalledAppDetails$4;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 631
    new-instance v1, Lcom/android/lineageos/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/lineageos/applications/InstalledAppDetails$4;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v2, p0, Lcom/android/lineageos/applications/InstalledAppDetails$4;->this$0:Lcom/android/lineageos/applications/InstalledAppDetails;

    iget-object v2, v2, Lcom/android/lineageos/applications/InstalledAppDetails;->mAppEntry:Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/lineageoslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 632
    const/4 v3, 0x3

    .line 631
    invoke-direct {v1, v0, v2, v3}, Lcom/android/lineageos/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/lineageos/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    .line 633
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 631
    invoke-virtual {v1, v2}, Lcom/android/lineageos/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 629
    return-void
.end method
