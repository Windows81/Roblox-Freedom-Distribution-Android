.class Lcom/roblox/client/startup/c$11;
.super Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/startup/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/startup/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/c;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/roblox/client/startup/c$11;->a:Lcom/roblox/client/startup/c;

    invoke-direct {p0}, Lcom/roblox/engine/jni/OnAppBridgeNotificationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/roblox/client/startup/c$11;->a:Lcom/roblox/client/startup/c;

    invoke-static {v0, p1, p2}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
