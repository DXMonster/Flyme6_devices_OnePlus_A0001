.class Lcom/android/lineageos/wfd/WifiDisplaySettings$5$2;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/lineageos/wfd/WifiDisplaySettings$5;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/lineageos/wfd/WifiDisplaySettings$5;


# direct methods
.method constructor <init>(Lcom/android/lineageos/wfd/WifiDisplaySettings$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/lineageos/wfd/WifiDisplaySettings$5;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/lineageos/wfd/WifiDisplaySettings$5$2;->this$1:Lcom/android/lineageos/wfd/WifiDisplaySettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/lineageos/wfd/WifiDisplaySettings$5$2;->this$1:Lcom/android/lineageos/wfd/WifiDisplaySettings$5;

    iget-object v0, v0, Lcom/android/lineageos/wfd/WifiDisplaySettings$5;->this$0:Lcom/android/lineageos/wfd/WifiDisplaySettings;

    invoke-static {v0}, Lcom/android/lineageos/wfd/WifiDisplaySettings;->-get1(Lcom/android/lineageos/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resumeWifiDisplay()V

    .line 355
    return-void
.end method
