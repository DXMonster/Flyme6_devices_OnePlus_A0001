.class Lcom/android/lineageos/profiles/SetupActionsFragment$6;
.super Ljava/lang/Object;
.source "SetupActionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/profiles/SetupActionsFragment;->requestDozeModeDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/profiles/SetupActionsFragment;


# direct methods
.method constructor <init>(Lcom/android/lineageos/profiles/SetupActionsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/profiles/SetupActionsFragment;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/lineageos/profiles/SetupActionsFragment$6;->this$0:Lcom/android/lineageos/profiles/SetupActionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/lineageos/profiles/SetupActionsFragment$6;->this$0:Lcom/android/lineageos/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/lineageos/profiles/SetupActionsFragment;->mProfile:Lcyanogenmod/app/Profile;

    invoke-static {}, Lcom/android/lineageos/profiles/SetupActionsFragment;->-get0()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcyanogenmod/app/Profile;->setDozeMode(I)V

    .line 666
    iget-object v0, p0, Lcom/android/lineageos/profiles/SetupActionsFragment$6;->this$0:Lcom/android/lineageos/profiles/SetupActionsFragment;

    invoke-static {v0}, Lcom/android/lineageos/profiles/SetupActionsFragment;->-wrap4(Lcom/android/lineageos/profiles/SetupActionsFragment;)V

    .line 667
    iget-object v0, p0, Lcom/android/lineageos/profiles/SetupActionsFragment$6;->this$0:Lcom/android/lineageos/profiles/SetupActionsFragment;

    iget-object v0, v0, Lcom/android/lineageos/profiles/SetupActionsFragment;->mAdapter:Lcom/android/lineageos/profiles/actions/ItemListAdapter;

    invoke-virtual {v0}, Lcom/android/lineageos/profiles/actions/ItemListAdapter;->notifyDataSetChanged()V

    .line 668
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 664
    return-void
.end method
