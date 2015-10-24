.class Ltl;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltf;

.field final synthetic b:Ltj;


# direct methods
.method constructor <init>(Ltj;Ltf;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Ltl;->b:Ltj;

    iput-object p2, p0, Ltl;->a:Ltf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    sget-boolean v0, Lud;->b:Z

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "stat.EventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter in addEventJob!\nAdd event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ltl;->a:Ltf;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    iget-object v0, p0, Ltl;->b:Ltj;

    invoke-static {v0}, Ltj;->a(Ltj;)Ljava/util/Queue;

    move-result-object v0

    iget-object v1, p0, Ltl;->a:Ltf;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Ltl;->b:Ltj;

    invoke-static {v0}, Ltj;->b(Ltj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Luf;->a(Ljava/lang/Runnable;)Z

    .line 130
    return-void
.end method
