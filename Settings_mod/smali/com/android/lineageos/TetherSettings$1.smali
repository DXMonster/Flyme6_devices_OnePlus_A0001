.class Lcom/android/lineageos/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/lineageos/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/TetherSettings;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/lineageos/TetherSettings$1;->this$0:Lcom/android/lineageos/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/lineageos/TetherSettings$1;->this$0:Lcom/android/lineageos/TetherSettings;

    invoke-static {v0}, Lcom/android/lineageos/TetherSettings;->-get1(Lcom/android/lineageos/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/lineageos/TetherSettings$1;->this$0:Lcom/android/lineageos/TetherSettings;

    invoke-static {v0}, Lcom/android/lineageos/TetherSettings;->-get1(Lcom/android/lineageos/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 243
    return-void
.end method
