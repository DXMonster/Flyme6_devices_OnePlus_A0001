.class Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$DockEventHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$DockEventHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v5, 0x0

    .line 369
    const/4 v0, 0x1

    .line 370
    .local v0, "anythingButUnDocked":I
    const-string/jumbo v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 371
    .local v2, "state":I
    if-nez v2, :cond_0

    .line 372
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 373
    iget-object v3, p0, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$DockEventHandler;->this$0:Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    invoke-static {v3}, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;)Lcom/android/lineageoslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/lineageoslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 374
    .local v1, "cachedDevice":Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {v1, v5}, Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 367
    .end local v1    # "cachedDevice":Lcom/android/lineageoslib/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method
