.class Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$ClassChangedHandler;
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
    name = "ClassChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$ClassChangedHandler;->this$0:Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$ClassChangedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager$ClassChangedHandler;->this$0:Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;

    invoke-static {v0}, Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/lineageoslib/bluetooth/BluetoothEventManager;)Lcom/android/lineageoslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/lineageoslib/bluetooth/CachedBluetoothDeviceManager;->onBtClassChanged(Landroid/bluetooth/BluetoothDevice;)V

    .line 336
    return-void
.end method
