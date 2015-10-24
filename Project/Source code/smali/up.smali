.class Lup;
.super Ljava/lang/Object;
.source "DXFBManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lur;

.field final synthetic c:I

.field final synthetic d:Lun;


# direct methods
.method constructor <init>(Lun;ILur;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lup;->d:Lun;

    iput p2, p0, Lup;->a:I

    iput-object p3, p0, Lup;->b:Lur;

    iput p4, p0, Lup;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 305
    iget-object v0, p0, Lup;->d:Lun;

    invoke-static {v0}, Lun;->a(Lun;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lun;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lun;->d()I

    move-result v2

    iget v3, p0, Lup;->a:I

    invoke-static {v0, v1, v2, v3}, Lve;->a(Landroid/content/Context;Ljava/lang/String;II)Ljava/net/URI;

    move-result-object v0

    .line 306
    const-string v1, "get_hot_list"

    iget v2, p0, Lup;->a:I

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lvv;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    iget-object v2, p0, Lup;->d:Lun;

    invoke-static {v2}, Lun;->a(Lun;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lvv;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 308
    iget-object v2, p0, Lup;->d:Lun;

    invoke-static {v2}, Lun;->a(Lun;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lun;->e()Lut;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lut;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Lvc;->a(Landroid/content/Context;Ljava/net/URI;J)Lvb;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, v1}, Lvb;->a(Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lun;->e()Lut;

    move-result-object v2

    invoke-virtual {v2, v0}, Lut;->a(Lvb;)V

    .line 315
    :cond_0
    invoke-static {}, Lun;->e()Lut;

    move-result-object v0

    iget v2, p0, Lup;->a:I

    invoke-virtual {v0, v1, v2}, Lut;->a(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_1

    .line 321
    const-string v0, "DXFBManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getHotTopic list size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lvt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 326
    const/4 v0, 0x0

    .line 331
    :goto_0
    iget-object v2, p0, Lup;->b:Lur;

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lup;->b:Lur;

    iget v3, p0, Lup;->c:I

    invoke-interface {v2, v3, v0, v1}, Lur;->a(IILjava/util/ArrayList;)V

    .line 334
    :cond_2
    return-void

    .line 328
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
