.class public Lcom/roblox/client/w$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/roblox/client/w$d;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/roblox/client/w$d;->a:Lcom/roblox/client/w$d;

    iput-object v0, p0, Lcom/roblox/client/w$c;->a:Lcom/roblox/client/w$d;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/roblox/client/w$c;->a:Lcom/roblox/client/w$d;

    sget-object v1, Lcom/roblox/client/w$d;->c:Lcom/roblox/client/w$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Z
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/roblox/client/w$c;->a:Lcom/roblox/client/w$d;

    sget-object v1, Lcom/roblox/client/w$d;->b:Lcom/roblox/client/w$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()V
    .locals 1

    .line 55
    sget-object v0, Lcom/roblox/client/w$d;->c:Lcom/roblox/client/w$d;

    iput-object v0, p0, Lcom/roblox/client/w$c;->a:Lcom/roblox/client/w$d;

    return-void
.end method

.method public d()V
    .locals 1

    .line 59
    sget-object v0, Lcom/roblox/client/w$d;->b:Lcom/roblox/client/w$d;

    iput-object v0, p0, Lcom/roblox/client/w$c;->a:Lcom/roblox/client/w$d;

    return-void
.end method

.method public e()V
    .locals 1

    .line 67
    sget-object v0, Lcom/roblox/client/w$d;->d:Lcom/roblox/client/w$d;

    iput-object v0, p0, Lcom/roblox/client/w$c;->a:Lcom/roblox/client/w$d;

    return-void
.end method
