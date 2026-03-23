.class public abstract Lcom/roblox/client/pushnotification/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/pushnotification/b/e$a;
.implements Lcom/roblox/client/pushnotification/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/roblox/client/pushnotification/b/m;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/roblox/client/pushnotification/b/e$a<",
        "TT;>;",
        "Lcom/roblox/client/pushnotification/i<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/roblox/client/pushnotification/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/roblox/client/pushnotification/b/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/roblox/client/pushnotification/b/e;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/b/e;-><init>()V

    iput-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    .line 26
    invoke-virtual {v0, p0}, Lcom/roblox/client/pushnotification/b/e;->a(Lcom/roblox/client/pushnotification/b/e$a;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "TT;)",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method

.method protected a(Landroid/content/Context;ZLandroid/graphics/Bitmap;)Landroidx/core/app/i$c;
    .locals 2

    .line 124
    new-instance v0, Landroidx/core/app/i$c;

    const-string v1, "channel_general"

    invoke-direct {v0, p1, v1}, Landroidx/core/app/i$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/roblox/client/pushnotification/a;->c(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Landroid/app/PendingIntent;)Landroidx/core/app/i$c;

    .line 131
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->c()Lcom/roblox/client/pushnotification/b/m;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/roblox/client/pushnotification/a;->b(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->b(Landroid/app/PendingIntent;)Landroidx/core/app/i$c;

    .line 134
    sget v1, Lcom/roblox/client/o$e;->notification_icon:I

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(I)Landroidx/core/app/i$c;

    .line 135
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->b(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Z)Landroidx/core/app/i$c;

    .line 137
    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$c;

    .line 138
    iget-object v1, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v1}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/i$c;->b(I)Landroidx/core/app/i$c;

    .line 139
    invoke-virtual {v0, p3}, Landroidx/core/app/i$c;->a(Landroid/graphics/Bitmap;)Landroidx/core/app/i$c;

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 143
    invoke-static {p2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/core/app/i$c;->a(Landroid/net/Uri;)Landroidx/core/app/i$c;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 145
    invoke-virtual {v0, p2}, Landroidx/core/app/i$c;->a(Landroid/net/Uri;)Landroidx/core/app/i$c;

    .line 148
    :goto_0
    new-instance p2, Landroidx/core/app/i$b;

    invoke-direct {p2}, Landroidx/core/app/i$b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/roblox/client/pushnotification/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/app/i$b;->a(Ljava/lang/CharSequence;)Landroidx/core/app/i$b;

    move-result-object p1

    .line 149
    invoke-virtual {v0, p1}, Landroidx/core/app/i$c;->a(Landroidx/core/app/i$d;)Landroidx/core/app/i$c;

    return-object v0
.end method

.method protected abstract a(I)Ljava/lang/String;
.end method

.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 183
    sget v0, Lcom/roblox/client/o$j;->CommonUI_Messages_Label_Roblox:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "notification"

    .line 86
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;J)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0, p2, p3}, Lcom/roblox/client/pushnotification/b/e;->a(J)V

    .line 68
    iget-object p2, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/e;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->d()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/content/Context;Landroidx/core/app/i$c;)V
    .locals 1

    .line 93
    invoke-virtual {p2}, Landroidx/core/app/i$c;->b()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "notification"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 95
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->d()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0, p2}, Lcom/roblox/client/pushnotification/b/e;->a(Lcom/roblox/client/pushnotification/b/m;)V

    .line 34
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->a()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0, p2}, Lcom/roblox/client/pushnotification/b/e;->b(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {p2}, Lcom/roblox/client/pushnotification/b/e;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->d()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/content/Context;Z)V
    .locals 8

    if-eqz p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/roblox/client/pushnotification/a$1;

    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->e()J

    move-result-wide v4

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/roblox/client/pushnotification/a$1;-><init>(Lcom/roblox/client/pushnotification/a;Landroid/content/Context;JLandroid/content/Context;Z)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 116
    invoke-virtual {v0, p1, p2}, Lcom/roblox/client/pushnotification/a$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected b(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)Landroid/app/PendingIntent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 163
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/roblox/client/pushnotification/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0, v0, p2}, Lcom/roblox/client/pushnotification/a;->a(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EXTRA_INTENT_ACTION_TYPE_CODE"

    .line 167
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object p2

    const-string v1, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->d()I

    move-result p2

    const/high16 v1, 0x10000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected abstract b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "TT;)",
            "Landroid/content/Intent;"
        }
    .end annotation
.end method

.method protected abstract b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public b()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->clear()V

    return-void
.end method

.method protected c(Landroid/content/Context;Lcom/roblox/client/pushnotification/b/m;)Landroid/app/PendingIntent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Landroid/app/PendingIntent;"
        }
    .end annotation

    .line 173
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/roblox/client/pushnotification/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0, p2}, Lcom/roblox/client/pushnotification/a;->b(Landroid/content/Intent;Lcom/roblox/client/pushnotification/b/m;)Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-interface {p2}, Lcom/roblox/client/pushnotification/b/m;->b()Ljava/lang/String;

    move-result-object p2

    const-string v2, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "EXTRA_INTENT_ACTION_TYPE_CODE"

    .line 177
    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->f()Ljava/lang/String;

    move-result-object p2

    const-string v1, "EXTRA_NOTIFICATION_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {p0}, Lcom/roblox/client/pushnotification/a;->d()I

    move-result p2

    const/high16 v1, 0x10000000

    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/roblox/client/pushnotification/b/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/roblox/client/pushnotification/a;->a:Lcom/roblox/client/pushnotification/b/e;

    invoke-virtual {v0}, Lcom/roblox/client/pushnotification/b/e;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/roblox/client/pushnotification/b/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/pushnotification/b/m;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract d()I
.end method

.method protected abstract e()J
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected abstract g()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
