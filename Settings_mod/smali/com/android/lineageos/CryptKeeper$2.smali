.class Lcom/android/lineageos/CryptKeeper$2;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/lineageos/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/lineageos/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/lineageos/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/lineageos/CryptKeeper;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/lineageos/CryptKeeper$2;->this$0:Lcom/android/lineageos/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/lineageos/CryptKeeper$2;->this$0:Lcom/android/lineageos/CryptKeeper;

    invoke-static {v0}, Lcom/android/lineageos/CryptKeeper;->-get3(Lcom/android/lineageos/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 166
    return-void
.end method
