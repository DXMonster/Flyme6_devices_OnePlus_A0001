.class Lcom/android/lineageos/CryptKeeper$1;
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
    .line 154
    iput-object p1, p0, Lcom/android/lineageos/CryptKeeper$1;->this$0:Lcom/android/lineageos/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/lineageos/CryptKeeper$1;->this$0:Lcom/android/lineageos/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/lineageos/CryptKeeper;->-wrap4(Lcom/android/lineageos/CryptKeeper;Ljava/lang/Integer;)V

    .line 156
    return-void
.end method
