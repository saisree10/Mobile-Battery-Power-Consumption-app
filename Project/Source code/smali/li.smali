.class public Lli;
.super Ljava/lang/Object;
.source "MaterialGroupPrimitive.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>(JJLjava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lli;->a:J

    .line 18
    iput-wide p3, p0, Lli;->b:J

    .line 19
    iput-object p5, p0, Lli;->c:Ljava/util/List;

    .line 20
    return-void
.end method
