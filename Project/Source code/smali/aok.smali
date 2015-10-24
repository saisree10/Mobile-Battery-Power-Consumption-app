.class Laok;
.super Landroid/os/Handler;
.source "SkinTabMgr.java"


# instance fields
.field final synthetic a:Laoj;

.field private b:I


# direct methods
.method constructor <init>(Laoj;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Laok;->a:Laoj;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Laok;->b:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handle msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoj;->b(Ljava/lang/String;)V

    .line 329
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->b(Laoj;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Laon;

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 332
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->b(Laoj;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    iget v1, p0, Laok;->b:I

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->c(Laoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 337
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->d(Laoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 338
    iget-object v2, p0, Laok;->a:Laoj;

    invoke-static {v2}, Laoj;->c(Laoj;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Laok;->a:Laoj;

    invoke-static {v3}, Laoj;->b(Laoj;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 340
    :cond_1
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-virtual {v0}, Laoj;->c()V

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->d(Laoj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 346
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->b(Laoj;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 347
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Laok;->b:I

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v0, p0, Laok;->a:Laoj;

    invoke-static {v0}, Laoj;->d(Laoj;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 329
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
