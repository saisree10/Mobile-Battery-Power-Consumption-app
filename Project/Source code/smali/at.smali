.class Lat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Laq;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lao;)Landroid/app/Notification;
    .locals 13
    .parameter

    .prologue
    .line 108
    iget-object v0, p1, Lao;->a:Landroid/content/Context;

    iget-object v1, p1, Lao;->r:Landroid/app/Notification;

    iget-object v2, p1, Lao;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Lao;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Lao;->h:Ljava/lang/CharSequence;

    iget-object v5, p1, Lao;->f:Landroid/widget/RemoteViews;

    iget v6, p1, Lao;->i:I

    iget-object v7, p1, Lao;->d:Landroid/app/PendingIntent;

    iget-object v8, p1, Lao;->e:Landroid/app/PendingIntent;

    iget-object v9, p1, Lao;->g:Landroid/graphics/Bitmap;

    iget v10, p1, Lao;->n:I

    iget v11, p1, Lao;->o:I

    iget-boolean v12, p1, Lao;->p:Z

    invoke-static/range {v0 .. v12}, Lax;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
