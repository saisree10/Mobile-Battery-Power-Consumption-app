.class Ljf;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:I

.field public i:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput v0, p0, Ljf;->a:I

    .line 157
    iput-wide v1, p0, Ljf;->b:J

    .line 161
    iput-boolean v0, p0, Ljf;->d:Z

    .line 169
    iput v0, p0, Ljf;->h:I

    .line 171
    iput-wide v1, p0, Ljf;->i:J

    return-void
.end method

.method synthetic constructor <init>(Lje;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, Ljf;-><init>()V

    return-void
.end method
