.class Ladq;
.super Ljava/lang/Object;
.source "BatteryThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lads;

.field final synthetic d:Ladp;


# direct methods
.method constructor <init>(Ladp;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lads;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Ladq;->d:Ladp;

    iput-object p2, p0, Ladq;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Ladq;->b:Landroid/graphics/Bitmap;

    iput-object p4, p0, Ladq;->c:Lads;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 286
    iget-object v0, p0, Ladq;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ladq;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 287
    :cond_0
    iget-object v0, p0, Ladq;->c:Lads;

    iget-object v1, p0, Ladq;->d:Ladp;

    invoke-static {v1}, Ladp;->a(Ladp;)I

    move-result v1

    invoke-interface {v0, v6, v1}, Lads;->a(ZI)V

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ct_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ladq;->d:Ladp;

    invoke-static {v1}, Ladp;->a(Ladp;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ct_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ladq;->d:Ladp;

    invoke-static {v2}, Ladp;->a(Ladp;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    iget-object v2, p0, Ladq;->d:Ladp;

    iget-object v3, p0, Ladq;->a:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v3}, Ladp;->a(Ladp;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v2

    .line 293
    iget-object v3, p0, Ladq;->d:Ladp;

    iget-object v4, p0, Ladq;->b:Landroid/graphics/Bitmap;

    invoke-static {v3, v1, v4}, Ladp;->a(Ladp;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 294
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 295
    iget-object v0, p0, Ladq;->c:Lads;

    const/4 v1, 0x1

    iget-object v2, p0, Ladq;->d:Ladp;

    invoke-static {v2}, Ladp;->a(Ladp;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lads;->a(ZI)V

    .line 296
    iget-object v0, p0, Ladq;->d:Ladp;

    const-string v1, "ct_"

    invoke-virtual {v0, v1}, Ladp;->a(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Ladq;->d:Ladp;

    iget-object v1, p0, Ladq;->d:Ladp;

    invoke-static {v1}, Ladp;->a(Ladp;)I

    move-result v1

    invoke-virtual {v0, v1}, Ladp;->a(I)V

    .line 298
    iget-object v0, p0, Ladq;->d:Ladp;

    invoke-static {v0}, Ladp;->b(Ladp;)V

    goto/16 :goto_0

    .line 300
    :cond_3
    iget-object v4, p0, Ladq;->c:Lads;

    iget-object v5, p0, Ladq;->d:Ladp;

    invoke-static {v5}, Ladp;->a(Ladp;)I

    move-result v5

    invoke-interface {v4, v6, v5}, Lads;->a(ZI)V

    .line 301
    if-eqz v2, :cond_4

    .line 302
    iget-object v2, p0, Ladq;->d:Ladp;

    invoke-static {v2, v0}, Ladp;->a(Ladp;Ljava/lang/String;)Z

    .line 304
    :cond_4
    if-eqz v3, :cond_1

    .line 305
    iget-object v0, p0, Ladq;->d:Ladp;

    invoke-static {v0, v1}, Ladp;->a(Ladp;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method
