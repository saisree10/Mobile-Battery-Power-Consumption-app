.class public Luy;
.super Lux;
.source "FeedBackHotTopic.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p3, p4, p5}, Lux;-><init>(Ljava/lang/String;J)V

    .line 16
    iput-object p2, p0, Luy;->a:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Luy;->b:Ljava/lang/String;

    .line 18
    iput p6, p0, Luy;->c:I

    .line 19
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Luy;->a:Ljava/lang/String;

    return-object v0
.end method
