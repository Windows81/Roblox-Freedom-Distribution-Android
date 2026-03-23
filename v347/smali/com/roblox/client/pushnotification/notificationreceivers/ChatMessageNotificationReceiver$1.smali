.class Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/h/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;->a(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;


# direct methods
.method constructor <init>(Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->e:Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver;

    iput-object p2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->c:J

    iput-object p6, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 60
    const-string v0, "Moderated"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 61
    new-instance v1, Lcom/roblox/client/pushnotification/h;

    invoke-direct {v1}, Lcom/roblox/client/pushnotification/h;-><init>()V

    iget-object v2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->b:Ljava/lang/String;

    iget-wide v4, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->c:J

    iget-object v6, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->d:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/roblox/client/pushnotification/h;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Z)V

    .line 62
    return-void
.end method
