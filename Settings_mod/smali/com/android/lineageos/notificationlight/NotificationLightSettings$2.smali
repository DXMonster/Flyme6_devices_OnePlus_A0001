.class Lcom/android/lineageos/notificationlight/NotificationLightSettings$2;
.super Ljava/lang/Object;
.source "NotificationLightSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/notificationlight/NotificationLightSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/notificationlight/NotificationLightSettings;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/android/lineageos/notificationlight/NotificationLightSettings;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/notificationlight/NotificationLightSettings;
    .param p2, "val$dialog"    # Landroid/app/Dialog;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/lineageos/notificationlight/NotificationLightSettings$2;->this$0:Lcom/android/lineageos/notificationlight/NotificationLightSettings;

    iput-object p2, p0, Lcom/android/lineageos/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lineageos/cyanogenmod/PackageListAdapter$PackageItem;

    .line 528
    .local v0, "info":Lcom/android/lineageos/cyanogenmod/PackageListAdapter$PackageItem;
    iget-object v1, p0, Lcom/android/lineageos/notificationlight/NotificationLightSettings$2;->this$0:Lcom/android/lineageos/notificationlight/NotificationLightSettings;

    iget-object v2, v0, Lcom/android/lineageos/cyanogenmod/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/lineageos/notificationlight/NotificationLightSettings;->-wrap0(Lcom/android/lineageos/notificationlight/NotificationLightSettings;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/android/lineageos/notificationlight/NotificationLightSettings$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 525
    return-void
.end method
