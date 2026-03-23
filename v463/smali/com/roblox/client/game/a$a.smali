.class Lcom/roblox/client/game/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/game/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/game/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/game/a;


# direct methods
.method private constructor <init>(Lcom/roblox/client/game/a;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/roblox/client/game/a$a;->a:Lcom/roblox/client/game/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/roblox/client/game/a;Lcom/roblox/client/game/a$1;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, Lcom/roblox/client/game/a$a;-><init>(Lcom/roblox/client/game/a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppReady() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.appshell"

    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AvatarEditor"

    .line 376
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onAppReady() check catalog promo"

    .line 377
    invoke-static {v1, v0}, Lcom/roblox/client/ae/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/roblox/client/game/a$a;->a:Lcom/roblox/client/game/a;

    invoke-static {v0}, Lcom/roblox/client/game/a;->e(Lcom/roblox/client/game/a;)Lcom/roblox/client/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/e;->a()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/game/a$a;->a:Lcom/roblox/client/game/a;

    invoke-static {v0}, Lcom/roblox/client/game/a;->f(Lcom/roblox/client/game/a;)Lcom/roblox/client/game/a$d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/roblox/client/game/a$a;->a:Lcom/roblox/client/game/a;

    invoke-static {v0}, Lcom/roblox/client/game/a;->f(Lcom/roblox/client/game/a;)Lcom/roblox/client/game/a$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/roblox/client/game/a$d;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
