.class Lcom/android/lineageos/DeviceAdminSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/lineageos/DeviceAdminSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/DeviceAdminSettings;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/lineageos/DeviceAdminSettings$1;->this$0:Lcom/android/lineageos/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/lineageos/DeviceAdminSettings$1;->this$0:Lcom/android/lineageos/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/lineageos/DeviceAdminSettings;->updateList()V

    .line 74
    :cond_0
    return-void
.end method
