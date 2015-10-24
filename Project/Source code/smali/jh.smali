.class Ljh;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/io/FileOutputStream;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:Ljava/lang/String;

.field final synthetic k:Ljd;


# direct methods
.method public constructor <init>(Ljd;Liy;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 141
    iput-object p1, p0, Ljh;->k:Ljd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-boolean v0, p0, Ljh;->e:Z

    .line 131
    iput v0, p0, Ljh;->f:I

    .line 133
    iput v0, p0, Ljh;->g:I

    .line 137
    iput-boolean v0, p0, Ljh;->i:Z

    .line 142
    iget-object v0, p2, Liy;->d:Ljava/lang/String;

    invoke-static {v0}, Ljd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljh;->d:Ljava/lang/String;

    .line 143
    iget-object v0, p2, Liy;->a:Ljava/lang/String;

    iput-object v0, p0, Ljh;->j:Ljava/lang/String;

    .line 144
    iget-object v0, p2, Liy;->c:Ljava/lang/String;

    iput-object v0, p0, Ljh;->b:Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljd;->a(Ljd;)Landroid/content/Context;

    move-result-object v1

    iget v2, p2, Liy;->e:I

    invoke-static {v1, v2}, Lix;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljh;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljh;->a:Ljava/lang/String;

    .line 147
    return-void
.end method
