.class Lcom/roblox/client/startup/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/b$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/startup/c;->j()V
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

    .line 277
    iput-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    iput-object p2, p0, Lcom/roblox/client/startup/c$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 281
    invoke-static {}, Lcom/roblox/client/analytics/a;->a()Lcom/roblox/client/analytics/a;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    invoke-static {v1}, Lcom/roblox/client/startup/c;->d(Lcom/roblox/client/startup/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/client/analytics/a;->a(Landroid/content/Context;)V

    if-nez p1, :cond_2

    const-string p1, "InitHelper"

    const-string v0, "getAllAppSettings: ... Settings loaded."

    .line 284
    invoke-static {p1, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    sget-object v0, Lcom/roblox/client/startup/c$a;->c:Lcom/roblox/client/startup/c$a;

    invoke-static {p1, v0}, Lcom/roblox/client/startup/c;->a(Lcom/roblox/client/startup/c;Lcom/roblox/client/startup/c$a;)Lcom/roblox/client/startup/c$a;

    .line 286
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/roblox/engine/jni/NativeAppTracingInterface;->a(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/roblox/client/x/c;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->e(Lcom/roblox/client/startup/c;)V

    .line 289
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    .line 290
    invoke-static {p1}, Lcom/roblox/client/startup/c;->d(Lcom/roblox/client/startup/c;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/roblox/client/game/e;->a(Landroid/content/Context;)Lcom/roblox/client/game/b$a;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/roblox/client/game/b$a;->a()Lcom/roblox/engine/jni/model/b;

    move-result-object p1

    .line 291
    invoke-static {p1}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeSetDeviceInfo(Lcom/roblox/engine/jni/model/b;)V

    .line 298
    :cond_0
    invoke-static {}, Lcom/roblox/client/m/c;->a()Lcom/roblox/client/m/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/roblox/client/m/e;->cK()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    invoke-virtual {p1}, Lcom/roblox/client/startup/c;->a()V

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->f(Lcom/roblox/client/startup/c;)V

    goto :goto_0

    .line 304
    :cond_2
    iget-object p1, p0, Lcom/roblox/client/startup/c$6;->b:Lcom/roblox/client/startup/c;

    invoke-static {p1}, Lcom/roblox/client/startup/c;->g(Lcom/roblox/client/startup/c;)V

    :goto_0
    return-void
.end method
