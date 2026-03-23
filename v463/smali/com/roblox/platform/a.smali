.class public Lcom/roblox/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/platform/f;
    .locals 3

    .line 12
    new-instance v0, Lcom/roblox/platform/j;

    .line 13
    invoke-static {}, Lcom/roblox/platform/i;->e()Lc/x;

    move-result-object v1

    .line 14
    invoke-static {}, Lcom/roblox/platform/http/a/c;->a()Lcom/roblox/platform/http/a/c;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/roblox/platform/j;-><init>(Lc/x;Le/c$a;)V

    .line 15
    invoke-static {}, Lcom/roblox/platform/i;->c()Lcom/roblox/platform/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/roblox/platform/j;->a(Lcom/roblox/platform/c;)Lcom/roblox/platform/f;

    move-result-object v0

    return-object v0
.end method
