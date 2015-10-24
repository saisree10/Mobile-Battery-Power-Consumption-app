.class public Lvf;
.super Ljava/lang/Object;
.source "NotifyResponseData.java"


# instance fields
.field private a:J

.field private b:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-wide p1, p0, Lvf;->a:J

    .line 8
    iput p3, p0, Lvf;->b:I

    .line 9
    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 12
    iget-wide v0, p0, Lvf;->a:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lvf;->b:I

    return v0
.end method
