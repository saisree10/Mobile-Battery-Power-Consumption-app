.class public Ltm;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ltj;

.field private b:I


# direct methods
.method public constructor <init>(Ltj;)V
    .locals 1
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Ltm;->a:Ltj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Ltm;->b:I

    .line 180
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Ltm;->a:Ltj;

    invoke-static {v0}, Ltj;->c(Ltj;)Ltp;

    move-result-object v0

    invoke-virtual {v0}, Ltp;->a()Z

    move-result v0

    .line 187
    if-nez v0, :cond_0

    iget v0, p0, Ltm;->b:I

    if-nez v0, :cond_0

    .line 188
    iget v0, p0, Ltm;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltm;->b:I

    .line 189
    invoke-static {}, Ltj;->d()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Luf;->a(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_0
    return-void
.end method
