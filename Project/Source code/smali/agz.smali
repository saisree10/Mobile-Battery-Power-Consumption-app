.class public Lagz;
.super Lagp;
.source "SkinCoinPurchaseHandler.java"


# instance fields
.field private e:Laev;

.field private f:Laha;


# direct methods
.method public constructor <init>(Landroid/content/Context;Laev;Laha;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lagp;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object p2, p0, Lagz;->e:Laev;

    .line 21
    iput-object p3, p0, Lagz;->f:Laha;

    .line 22
    iget-wide v0, p2, Laev;->u:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lagz;->b:Ljava/lang/String;

    .line 23
    iget v0, p2, Laev;->j:I

    iput v0, p0, Lagz;->c:I

    .line 24
    const-string v0, "9"

    iput-object v0, p0, Lagz;->d:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lagz;->e:Laev;

    iput p3, v0, Laev;->j:I

    .line 31
    invoke-static {}, Laoj;->b()Laoj;

    move-result-object v0

    invoke-virtual {v0}, Laoj;->c()V

    .line 32
    iget-object v0, p0, Lagz;->f:Laha;

    invoke-interface {v0}, Laha;->a()V

    .line 33
    invoke-super {p0, p1, p2, p3}, Lagp;->a(Landroid/content/Context;II)V

    .line 34
    return-void
.end method
