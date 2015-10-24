.class final Lahy;
.super Ljava/lang/Object;
.source "MobileDataCommand.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lahv;


# direct methods
.method private constructor <init>(Lahv;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lahy;->a:Lahv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lahv;Lahw;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lahy;-><init>(Lahv;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lahy;->a:Lahv;

    iget-object v0, v0, Lahv;->e:Lahq;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lahy;->a:Lahv;

    invoke-virtual {v0}, Lahv;->a()Z

    .line 88
    iget-object v0, p0, Lahy;->a:Lahv;

    iget-boolean v0, v0, Lahv;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 89
    :goto_0
    iget-object v1, p0, Lahy;->a:Lahv;

    iget-object v1, v1, Lahv;->e:Lahq;

    iget-object v2, p0, Lahy;->a:Lahv;

    invoke-interface {v1, v2, v0, v0}, Lahq;->a(Lahp;II)V

    .line 91
    :cond_0
    return-void

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
