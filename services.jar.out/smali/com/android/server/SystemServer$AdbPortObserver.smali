.class Lcom/android/server/SystemServer$AdbPortObserver;
.super Landroid/database/ContentObserver;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbPortObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/server/SystemServer$AdbPortObserver;->this$0:Lcom/android/server/SystemServer;

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/server/SystemServer$AdbPortObserver;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v1}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;

    move-result-object v1

    .line 168
    const-string/jumbo v2, "adb_port"

    const/4 v3, 0x0

    .line 167
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, "adbPort":I
    const-string/jumbo v1, "service.adb.tcp.port"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method
