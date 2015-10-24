.class public Luz;
.super Lux;
.source "FeedBackTopic.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p2, p3, p4}, Lux;-><init>(Ljava/lang/String;J)V

    .line 29
    iput-object p1, p0, Luz;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Luz;->b:I

    .line 31
    iput p5, p0, Luz;->d:I

    .line 32
    iput p6, p0, Luz;->c:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Luz;->e:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Luz;->e:Ljava/util/ArrayList;

    .line 61
    iget-object v0, p0, Luz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Luz;->b:I

    .line 64
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Luz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Luz;->c:I

    return v0
.end method
