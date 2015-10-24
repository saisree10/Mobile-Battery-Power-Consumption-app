.class Ltk;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltj;


# direct methods
.method constructor <init>(Ltj;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Ltk;->a:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 54
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "stat.EventDispatcher"

    const-string v1, "Enter in HandleEventQueue!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    iget-object v0, p0, Ltk;->a:Ltj;

    invoke-static {v0}, Ltj;->a(Ltj;)Ljava/util/Queue;

    move-result-object v1

    .line 58
    iget-object v0, p0, Ltk;->a:Ltj;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v2}, Ltj;->a(Ltj;Ljava/util/Queue;)Ljava/util/Queue;

    .line 60
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltf;

    .line 62
    invoke-virtual {v0}, Ltf;->j()I

    move-result v2

    .line 63
    iget-object v3, p0, Ltk;->a:Ltj;

    invoke-static {v3, v0}, Ltj;->a(Ltj;Ltf;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 64
    sget-boolean v3, Lud;->c:Z

    if-eqz v3, :cond_2

    .line 65
    const-string v3, "stat.EventDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry to handle Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ltf;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ltf;->a(I)V

    .line 68
    iget-object v2, p0, Ltk;->a:Ltj;

    invoke-static {v2}, Ltj;->a(Ltj;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_3
    return-void
.end method
