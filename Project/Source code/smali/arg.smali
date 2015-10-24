.class Larg;
.super Ljava/lang/Object;
.source "SkinUnzipTask.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Larg;->a:I

    .line 33
    iput-object p2, p0, Larg;->b:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Larg;->c:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Larg;->d:Ljava/lang/String;

    .line 36
    iput-wide p5, p0, Larg;->e:J

    .line 37
    return-void
.end method
