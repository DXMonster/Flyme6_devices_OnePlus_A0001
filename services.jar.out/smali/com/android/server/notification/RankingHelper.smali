.class public Lcom/android/server/notification/RankingHelper;
.super Ljava/lang/Object;
.source "RankingHelper.java"

# interfaces
.implements Lcom/android/server/notification/RankingConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingHelper$Record;
    }
.end annotation


# static fields
.field private static final ATT_KEYGUARD:Ljava/lang/String; = "keyguard"

.field private static final ATT_NAME:Ljava/lang/String; = "name"

.field private static final ATT_PEEKABLE:Ljava/lang/String; = "peekable"

.field private static final ATT_PRIORITY:Ljava/lang/String; = "priority"

.field private static final ATT_UID:Ljava/lang/String; = "uid"

.field private static final ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ATT_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final DEFAULT_KEYGUARD:Z = true

.field private static final DEFAULT_PEEKABLE:Z = true

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DEFAULT_VISIBILITY:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "RankingHelper"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_RANKING:Ljava/lang/String; = "ranking"

.field private static final XML_VERSION:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

.field private final mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

.field private final mProxyByGroupTmp:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRankingHandler:Landroid/os/Handler;

.field private final mRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredWithoutUids:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rankingHandler"    # Landroid/os/Handler;
    .param p3, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p4, "extractorNames"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/android/server/notification/NotificationComparator;

    invoke-direct {v7}, Lcom/android/server/notification/NotificationComparator;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    new-instance v7, Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-direct {v7}, Lcom/android/server/notification/GlobalSortKeyComparator;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/RankingHelper;->initFlymeExtraFields()V

    array-length v0, p4

    .local v0, "N":I
    new-array v7, v0, [Lcom/android/server/notification/NotificationSignalExtractor;

    iput-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_0

    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    aget-object v8, p4, v6

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 84
    .local v5, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationSignalExtractor;

    .line 85
    .local v4, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-interface {v4, v7, p3}, Lcom/android/server/notification/NotificationSignalExtractor;->initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V

    .line 86
    invoke-interface {v4, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 87
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aput-object v4, v7, v6
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v4    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v5    # "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Problem accessing extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 90
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t instantiate extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 88
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "RankingHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find extractor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, p4, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 74
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    return-void
.end method

.method private static dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    .locals 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$DumpFilter;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/RankingHelper$Record;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, "records":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/RankingHelper$Record;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 428
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_7

    .line 429
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 430
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 431
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    const-string/jumbo v3, "  "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 433
    iget-object v3, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v3, " ("

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    sget v4, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v3, v4, :cond_6

    const-string/jumbo v3, "UNKNOWN_UID"

    :goto_1
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 437
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_1

    .line 438
    const-string/jumbo v3, " priority="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v3}, Landroid/app/Notification;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 441
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    if-nez v3, :cond_2

    .line 442
    const-string/jumbo v3, " peekable="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 443
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 445
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_3

    .line 446
    const-string/jumbo v3, " visibility="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 447
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v3}, Landroid/app/Notification;->visibilityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    :cond_3
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    if-nez v3, :cond_4

    .line 450
    const-string/jumbo v3, " keyguard="

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 453
    :cond_4
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 428
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 435
    :cond_6
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 426
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_7
    return-void
.end method

.method private getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    .line 195
    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v1, :cond_0

    .line 196
    new-instance v1, Lcom/android/server/notification/RankingHelper$Record;

    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    invoke-direct {v1, v3}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    .line 197
    .restart local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iput-object p1, v1, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    .line 198
    iput p2, v1, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 199
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_0
    return-object v1
.end method

.method private static recordKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeDefaultRecords()V
    .locals 5

    .prologue
    .line 205
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 206
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 207
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 208
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    if-eqz v3, :cond_0

    .line 209
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_0

    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    if-eqz v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 204
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_1
    return-void
.end method

.method private static safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 332
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseBool(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 318
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/server/notification/RankingHelper;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static tryParseBool(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    .line 337
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 338
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    .line 325
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p1
.end method

.method private updateConfig()V
    .locals 4

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 249
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-interface {v2, p0}, Lcom/android/server/notification/NotificationSignalExtractor;->setConfig(Lcom/android/server/notification/RankingConfig;)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 406
    if-nez p3, :cond_0

    .line 407
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v2

    .line 408
    .local v0, "N":I
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string/jumbo v2, "mSignalExtractors.length = "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 412
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    const-string/jumbo v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    if-nez p3, :cond_1

    .line 418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string/jumbo v2, "per-package config:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 422
    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-static {p1, p2, p3, v2}, Lcom/android/server/notification/RankingHelper;->dumpRecords(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    .line 405
    return-void
.end method

.method public extractSignals(Lcom/android/server/notification/NotificationRecord;)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    .line 111
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v8

    .line 112
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 113
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v8, v4

    .line 115
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/server/notification/NotificationSignalExtractor;->process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v6

    .line 116
    .local v6, "recon":Lcom/android/server/notification/RankingReconsideration;
    if-eqz v6, :cond_0

    .line 117
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    .line 118
    const/4 v9, 0x4

    .line 117
    invoke-static {v8, v9, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 119
    .local v5, "m":Landroid/os/Message;
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 120
    .local v2, "delay":J
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v2    # "delay":J
    .end local v5    # "m":Landroid/os/Message;
    .end local v6    # "recon":Lcom/android/server/notification/RankingReconsideration;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 122
    :catch_0
    move-exception v7

    .line 123
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "RankingHelper"

    const-string/jumbo v9, "NotificationSignalExtractor failed."

    invoke-static {v8, v9, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 110
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void
.end method

.method public findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/notification/NotificationSignalExtractor;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "extractorClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    array-length v0, v3

    .line 101
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mSignalExtractors:[Lcom/android/server/notification/NotificationSignalExtractor;

    aget-object v1, v3, v2

    .line 103
    .local v1, "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    return-object v1

    .line 101
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "extractor":Lcom/android/server/notification/NotificationSignalExtractor;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public getPackageKeyguard(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 391
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 392
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPackagePeekable(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 360
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPackagePriority(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 343
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 344
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageVisibilityOverride(Ljava/lang/String;I)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .line 376
    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x3e8

    goto :goto_0
.end method

.method public indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I
    .locals 1
    .param p2, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, p2, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;)V
    .locals 10
    .param p1, "queryReplace"    # Z
    .param p2, "pkgList"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 459
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 461
    :cond_0
    return-void

    .line 459
    :cond_1
    array-length v6, p2

    if-eqz v6, :cond_0

    .line 460
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v6

    .line 459
    if-nez v6, :cond_0

    .line 463
    iget-object v6, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 464
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 465
    .local v4, "updated":Z
    array-length v6, p2

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v1, p2, v5

    .line 466
    .local v1, "pkg":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/RankingHelper$Record;

    .line 467
    .local v3, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v3, :cond_2

    .line 469
    :try_start_0
    iget-object v7, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    iput v7, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    .line 470
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v7, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    iget-object v8, v3, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    iget v9, v3, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v8, v9}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    const/4 v4, 0x1

    .line 465
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_3
    if-eqz v4, :cond_4

    .line 479
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 458
    :cond_4
    return-void

    .line 473
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v3    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 131
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    .line 132
    .local v8, "type":I
    const/4 v11, 0x2

    if-eq v8, v11, :cond_0

    return-void

    .line 133
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "tag":Ljava/lang/String;
    const-string/jumbo v11, "ranking"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 136
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->clear()V

    .line 137
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x1

    if-eq v8, v11, :cond_a

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 139
    const/4 v11, 0x3

    if-ne v8, v11, :cond_3

    const-string/jumbo v11, "ranking"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 140
    return-void

    .line 142
    :cond_3
    const/4 v11, 0x2

    if-ne v8, v11, :cond_2

    .line 143
    const-string/jumbo v11, "package"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 144
    const-string/jumbo v11, "uid"

    sget v12, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 145
    .local v9, "uid":I
    const-string/jumbo v11, "priority"

    const/4 v12, 0x0

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 146
    .local v5, "priority":I
    const-string/jumbo v11, "peekable"

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    .line 147
    .local v3, "peekable":Z
    const-string/jumbo v11, "visibility"

    const/16 v12, -0x3e8

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 148
    .local v10, "vis":I
    const-string/jumbo v11, "keyguard"

    const/4 v12, 0x1

    invoke-static {p1, v11, v12}, Lcom/android/server/notification/RankingHelper;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    .local v1, "keyguard":Z
    const-string/jumbo v11, "name"

    const/4 v12, 0x0

    invoke-interface {p1, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 152
    if-eqz p2, :cond_4

    .line 154
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v4, v2, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 159
    :cond_4
    :goto_1
    const/4 v6, 0x0

    .line 160
    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    sget v11, Lcom/android/server/notification/RankingHelper$Record;->UNKNOWN_UID:I

    if-ne v9, v11, :cond_9

    .line 161
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    check-cast v6, Lcom/android/server/notification/RankingHelper$Record;

    .line 162
    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-nez v6, :cond_5

    .line 163
    new-instance v6, Lcom/android/server/notification/RankingHelper$Record;

    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    const/4 v11, 0x0

    invoke-direct {v6, v11}, Lcom/android/server/notification/RankingHelper$Record;-><init>(Lcom/android/server/notification/RankingHelper$Record;)V

    .restart local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    iget-object v11, p0, Lcom/android/server/notification/RankingHelper;->mRestoredWithoutUids:Landroid/util/ArrayMap;

    invoke-virtual {v11, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    iput v5, v6, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    :cond_6
    if-nez v3, :cond_7

    iput-boolean v3, v6, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    :cond_7
    const/16 v11, -0x3e8

    if-eq v10, v11, :cond_8

    iput v10, v6, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    :cond_8
    if-nez v1, :cond_2

    iput-boolean v1, v6, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    :cond_flyme_0

    invoke-direct {p0, p1, v5}, Lcom/android/server/notification/RankingHelper;->readFlymeExtraFields(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/notification/RankingHelper$Record;)V

    goto/16 :goto_0

    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 167
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_9
    invoke-direct {p0, v2, v9}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v6

    .local v6, "r":Lcom/android/server/notification/RankingHelper$Record;
    goto :goto_2

    .line 185
    .end local v1    # "keyguard":Z
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "peekable":Z
    .end local v5    # "priority":I
    .end local v6    # "r":Lcom/android/server/notification/RankingHelper$Record;
    .end local v9    # "uid":I
    .end local v10    # "vis":I
    :cond_a
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "Failed to reach END_DOCUMENT"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public setPackageKeyguard(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyguard"    # Z

    .prologue
    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageKeyguard(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_0

    .line 398
    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    .line 401
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    .line 402
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 396
    return-void
.end method

.method public setPackagePeekable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "peekable"    # Z

    .prologue
    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePeekable(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_0

    .line 366
    return-void

    .line 368
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    .line 369
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 364
    return-void
.end method

.method public setPackagePriority(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "priority"    # I

    .prologue
    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackagePriority(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 350
    return-void

    .line 352
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    .line 353
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    .line 354
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 348
    return-void
.end method

.method public setPackageVisibilityOverride(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    .line 381
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_0

    .line 382
    return-void

    .line 384
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    .line 385
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    .line 386
    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    .line 380
    return-void
.end method

.method public sort(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "N":I
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_0

    .line 259
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 258
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 263
    :cond_0
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mPreliminaryComparator:Lcom/android/server/notification/NotificationComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 265
    iget-object v9, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    monitor-enter v9

    .line 267
    add-int/lit8 v5, v0, -0x1

    :goto_1
    if-ltz v5, :cond_2

    .line 268
    :try_start_0
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 269
    .local v7, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationRecord;->setAuthoritativeRank(I)V

    .line 270
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "groupKey":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 272
    .local v6, "isGroupSummary":Z
    if-nez v6, :cond_1

    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 267
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 273
    :cond_1
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 265
    .end local v1    # "groupKey":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 278
    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v0, :cond_7

    .line 279
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 280
    .restart local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 281
    .local v2, "groupProxy":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "groupSortKey":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 290
    const-string/jumbo v4, "nsk"

    .line 297
    .local v4, "groupSortKeyPortion":Ljava/lang/String;
    :goto_4
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    .line 299
    .restart local v6    # "isGroupSummary":Z
    const-string/jumbo v10, "intrsv=%c:grnk=0x%04x:gsmry=%c:%s:rnk=0x%04x"

    const/4 v8, 0x5

    new-array v11, v8, [Ljava/lang/Object;

    .line 300
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x30

    :goto_5
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    .line 301
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v11, v12

    .line 302
    if-eqz v6, :cond_6

    const/16 v8, 0x30

    :goto_6
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v11, v12

    .line 303
    const/4 v8, 0x3

    aput-object v4, v11, v8

    .line 304
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getAuthoritativeRank()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v11, v12

    .line 299
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 298
    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationRecord;->setGlobalSortKey(Ljava/lang/String;)V

    .line 278
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 291
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    :cond_3
    const-string/jumbo v8, ""

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 292
    const-string/jumbo v4, "esk"

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    .line 294
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "gsk="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "groupSortKeyPortion":Ljava/lang/String;
    goto :goto_4

    .line 300
    .restart local v6    # "isGroupSummary":Z
    :cond_5
    const/16 v8, 0x31

    goto :goto_5

    .line 302
    :cond_6
    const/16 v8, 0x31

    goto :goto_6

    .line 306
    .end local v2    # "groupProxy":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "groupSortKey":Ljava/lang/String;
    .end local v4    # "groupSortKeyPortion":Ljava/lang/String;
    .end local v6    # "isGroupSummary":Z
    .end local v7    # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_7
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mProxyByGroupTmp:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 310
    iget-object v8, p0, Lcom/android/server/notification/RankingHelper;->mFinalComparator:Lcom/android/server/notification/GlobalSortKeyComparator;

    invoke-static {p1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    return-void
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 216
    const-string/jumbo v3, "ranking"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 217
    const-string/jumbo v3, "version"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 220
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 221
    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/RankingHelper$Record;

    .line 222
    .local v2, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz p2, :cond_0

    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    const-string/jumbo v3, "package"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const-string/jumbo v3, "name"

    iget-object v4, v2, Lcom/android/server/notification/RankingHelper$Record;->pkg:Ljava/lang/String;

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    if-eqz v3, :cond_1

    .line 228
    const-string/jumbo v3, "priority"

    iget v4, v2, Lcom/android/server/notification/RankingHelper$Record;->priority:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    :cond_1
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    if-nez v3, :cond_2

    .line 231
    const-string/jumbo v3, "peekable"

    iget-boolean v4, v2, Lcom/android/server/notification/RankingHelper$Record;->peekable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    :cond_2
    iget v3, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    const/16 v4, -0x3e8

    if-eq v3, v4, :cond_3

    .line 234
    const-string/jumbo v3, "visibility"

    iget v4, v2, Lcom/android/server/notification/RankingHelper$Record;->visibility:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-boolean v3, v2, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    if-nez v3, :cond_4

    const-string v3, "keyguard"

    iget-boolean v4, v2, Lcom/android/server/notification/RankingHelper$Record;->keyguard:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    if-nez p2, :cond_5

    const-string v3, "uid"

    iget v4, v2, Lcom/android/server/notification/RankingHelper$Record;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v5, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    :cond_5
    const-string/jumbo v3, "package"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 244
    .end local v2    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_6
    const-string/jumbo v3, "ranking"

    invoke-interface {p1, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    return-void
.end method

.method private getDefaultHeadsUpVisibility(Ljava/lang/String;I)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string v2, "headsup"

    const/4 v3, -0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .local v0, "visibility":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    :cond_0
    return v4

    :cond_1
    return v0
.end method

.method private initFlymeExtraFields()V
    .locals 3

    .prologue
    new-instance v0, Lcom/android/server/notification/ConfigCloud;

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/notification/ConfigCloud;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    new-instance v0, Lcom/android/server/notification/RankingControllerImpl;

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/RankingHelper;->mRankingHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/RankingControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    return-void
.end method

.method private readFlymeExtraFields(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 5
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "r"    # Lcom/android/server/notification/RankingHelper$Record;

    .prologue
    const/4 v4, -0x1

    const-string v2, "remind"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lcom/android/server/notification/RankingHelper;->safeBool(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "remindEnable":Z
    const-string v2, "headsup"

    invoke-static {p1, v2, v4}, Lcom/android/server/notification/RankingHelper;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    .local v0, "headsUp":I
    if-nez v1, :cond_0

    iput-boolean v1, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    :cond_0
    if-eq v0, v4, :cond_1

    iput v0, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    :cond_1
    return-void
.end method

.method private writeFlymeExtraFields(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/notification/RankingHelper$Record;)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "r"    # Lcom/android/server/notification/RankingHelper$Record;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    iget-boolean v0, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    if-nez v0, :cond_0

    const-string v0, "remind"

    iget-boolean v1, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "headsup"

    iget v1, p2, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method


# virtual methods
.method public addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->notificationOnClick(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addPackageRemoveByUserNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->notificationOnCanceledByUser(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addPackageSendNumber(Lcom/android/server/notification/NotificationRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    :try_start_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v1, p1}, Lcom/flyme/server/notfication/RankingController;->addNotification(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
    .locals 1
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F

    move-result v0

    return v0
.end method

.method public getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1, p2}, Lcom/flyme/server/notfication/RankingController;->getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ConfigCloud;->isPackageCovered(Ljava/lang/String;)Z

    move-result v0

    .local v0, "covered":Z
    const/4 v2, -0x1

    .local v2, "visibility":I
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mFlymeConfigCloud:Lcom/android/server/notification/ConfigCloud;

    const-string v4, "headsup"

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/notification/ConfigCloud;->getPackageIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-gt v2, v6, :cond_0

    if-gez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    :cond_1
    if-ne v2, v5, :cond_4

    iget-object v3, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/RankingHelper$Record;

    .local v1, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    :cond_2
    if-gt v2, v6, :cond_3

    if-gez v2, :cond_4

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getDefaultHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v2

    .end local v1    # "r":Lcom/android/server/notification/RankingHelper$Record;
    :cond_4
    return v2
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/notification/RankingHelper;->mRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Lcom/android/server/notification/RankingHelper;->recordKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/RankingHelper$Record;

    .local v0, "r":Lcom/android/server/notification/RankingHelper$Record;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPackageScore(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V
    .locals 1
    .param p1, "firewall"    # Lcom/android/server/notification/NotificationFirewall;

    .prologue
    iget-object v0, p0, Lcom/android/server/notification/RankingHelper;->mFlymeRankingController:Lcom/flyme/server/notfication/RankingController;

    invoke-interface {v0, p1}, Lcom/flyme/server/notfication/RankingController;->setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V

    return-void
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "visibility"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput p3, v0, Lcom/android/server/notification/RankingHelper$Record;->mFlymeHeadsUp:I

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enable"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    if-ne p3, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingHelper;->getOrCreateRecord(Ljava/lang/String;I)Lcom/android/server/notification/RankingHelper$Record;

    move-result-object v0

    iput-boolean p3, v0, Lcom/android/server/notification/RankingHelper$Record;->mFlymeRemind:Z

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->removeDefaultRecords()V

    invoke-direct {p0}, Lcom/android/server/notification/RankingHelper;->updateConfig()V

    return-void
.end method
