.class public Lvb;
.super Ljava/lang/Object;
.source "FeedBackResponseData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lorg/json/JSONObject;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lvb;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lvb;->b:Lorg/json/JSONObject;

    .line 18
    iput-wide p3, p0, Lvb;->c:J

    .line 19
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lvb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lvb;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lvb;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lvb;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lvb;->d:Ljava/lang/String;

    return-object v0
.end method
