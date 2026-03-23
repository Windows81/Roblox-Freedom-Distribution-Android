.class Lcom/roblox/client/startup/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/roblox/client/startup/c;


# direct methods
.method constructor <init>(Lcom/roblox/client/startup/c;Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/roblox/client/startup/c$4;->b:Lcom/roblox/client/startup/c;

    iput-object p2, p0, Lcom/roblox/client/startup/c$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/roblox/client/startup/c$4;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;)V

    const-string p1, "FinishGetLocales"

    .line 237
    invoke-static {p1}, Lcom/roblox/client/analytics/i;->a(Ljava/lang/String;)V

    .line 238
    iget-object p1, p0, Lcom/roblox/client/startup/c$4;->b:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->b(Lcom/roblox/client/startup/c;)V

    return-void
.end method
