.class Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/r/b$a;


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

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string p2, "Moderated"

    .line 60
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 61
    new-instance v0, Lcom/roblox/client/pushnotification/h;

    invoke-direct {v0}, Lcom/roblox/client/pushnotification/h;-><init>()V

    iget-object v1, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->b:Ljava/lang/String;

    iget-wide v3, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->c:J

    iget-object v5, p0, Lcom/roblox/client/pushnotification/notificationreceivers/ChatMessageNotificationReceiver$1;->d:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/pushnotification/h;->a(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Z)V

    return-void
.end method
