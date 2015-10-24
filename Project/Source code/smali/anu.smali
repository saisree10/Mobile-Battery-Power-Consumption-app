.class public Lanu;
.super Lanp;
.source "SimpleCommand.java"


# instance fields
.field private g:Ljava/lang/StringBuilder;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lanp;-><init>([Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lanu;->g:Ljava/lang/StringBuilder;

    .line 23
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lanu;->g:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 28
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lanu;->c:I

    return v0
.end method
