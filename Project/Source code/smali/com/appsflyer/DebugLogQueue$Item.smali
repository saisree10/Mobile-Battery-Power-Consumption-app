.class public Lcom/appsflyer/DebugLogQueue$Item;
.super Ljava/lang/Object;
.source "DebugLogQueue.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/appsflyer/DebugLogQueue$Item;->a:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/DebugLogQueue$Item;->b:J

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/appsflyer/DebugLogQueue$Item;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/appsflyer/DebugLogQueue$Item;->b:J

    return-wide v0
.end method
