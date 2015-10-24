.class public Late;
.super Latl;
.source "HardwareStatsEntry.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;D)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Latl;-><init>()V

    .line 39
    iput p1, p0, Late;->a:I

    .line 40
    iput-object p2, p0, Late;->b:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Late;->d:D

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Late;->c:I

    .line 43
    return-void
.end method
