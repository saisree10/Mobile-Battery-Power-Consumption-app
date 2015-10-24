.class Lji;
.super Ljava/lang/Throwable;
.source "DownloadThread.java"


# instance fields
.field public a:I

.field final synthetic b:Ljd;


# direct methods
.method public constructor <init>(Ljd;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lji;->b:Ljd;

    .line 189
    invoke-direct {p0, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 190
    iput p2, p0, Lji;->a:I

    .line 191
    return-void
.end method

.method public constructor <init>(Ljd;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lji;->b:Ljd;

    .line 195
    invoke-direct {p0, p3, p4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iput p2, p0, Lji;->a:I

    .line 197
    return-void
.end method
