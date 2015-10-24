.class Lhm;
.super Ljava/lang/Object;
.source "DownLoadTask.java"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>(Lhh;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-wide v0, p0, Lhm;->a:J

    .line 381
    iput-wide v0, p0, Lhm;->b:J

    .line 385
    iput-wide v0, p0, Lhm;->d:J

    .line 387
    iput-wide v0, p0, Lhm;->e:J

    .line 390
    invoke-virtual {p1}, Lhh;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lhm;->a:J

    .line 391
    const-string v0, "DownloadThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current bytes length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lhm;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lin;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    return-void
.end method
