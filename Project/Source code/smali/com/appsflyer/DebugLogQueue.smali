.class public Lcom/appsflyer/DebugLogQueue;
.super Ljava/lang/Object;
.source "DebugLogQueue.java"


# static fields
.field private static b:Lcom/appsflyer/DebugLogQueue;


# instance fields
.field a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/appsflyer/DebugLogQueue;

    invoke-direct {v0}, Lcom/appsflyer/DebugLogQueue;-><init>()V

    sput-object v0, Lcom/appsflyer/DebugLogQueue;->b:Lcom/appsflyer/DebugLogQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    .line 24
    return-void
.end method

.method public static a()Lcom/appsflyer/DebugLogQueue;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/appsflyer/DebugLogQueue;->b:Lcom/appsflyer/DebugLogQueue;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    new-instance v1, Lcom/appsflyer/DebugLogQueue$Item;

    invoke-direct {v1, p1}, Lcom/appsflyer/DebugLogQueue$Item;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public b()Lcom/appsflyer/DebugLogQueue$Item;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 36
    :goto_0
    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/DebugLogQueue$Item;

    .line 35
    iget-object v1, p0, Lcom/appsflyer/DebugLogQueue;->a:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
