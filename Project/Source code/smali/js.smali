.class public Ljs;
.super Ljava/lang/Object;
.source "RequestHelper.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    iput-boolean v0, p0, Ljs;->a:Z

    .line 404
    iput v0, p0, Ljs;->e:I

    return-void
.end method
