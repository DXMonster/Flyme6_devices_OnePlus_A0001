.class Lcom/android/lineageos/SecuritySettings$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/lineageos/SecuritySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/SecuritySettings;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/android/lineageos/SecuritySettings$1;->this$0:Lcom/android/lineageos/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/lineageos/SecuritySettings$1;->this$0:Lcom/android/lineageos/SecuritySettings;

    invoke-static {v0}, Lcom/android/lineageos/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    .line 293
    const/4 v0, 0x1

    return v0
.end method
