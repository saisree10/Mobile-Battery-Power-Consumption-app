.class Lsk;
.super Ljava/lang/Object;
.source "AppDatabase.java"


# instance fields
.field final synthetic a:Lsj;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lsj;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lsk;->a:Lsj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    iput-object p2, p0, Lsk;->b:Ljava/lang/String;

    .line 389
    iput-wide p3, p0, Lsk;->c:J

    .line 390
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lsk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 397
    iget-wide v0, p0, Lsk;->c:J

    return-wide v0
.end method
