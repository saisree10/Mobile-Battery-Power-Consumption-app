.class public Latf;
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
    .line 11
    invoke-direct {p0}, Latl;-><init>()V

    .line 12
    iput p1, p0, Latf;->a:I

    .line 13
    iput-object p2, p0, Latf;->b:Ljava/lang/String;

    .line 14
    iput-wide p3, p0, Latf;->d:D

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Latf;->c:I

    .line 16
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Latl;->a()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Latf;->a:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Latf;->b:Ljava/lang/String;

    .line 23
    return-void
.end method
