.class public Lcom/roblox/platform/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/f;


# instance fields
.field private a:Lb/w;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/platform/e;
    .locals 3

    .prologue
    .line 24
    new-instance v1, Lcom/roblox/platform/h;

    iget-object v0, p0, Lcom/roblox/platform/a;->a:Lb/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/platform/a;->a:Lb/w;

    .line 26
    :goto_0
    invoke-static {}, Lcom/roblox/platform/http/a/c;->a()Lcom/roblox/platform/http/a/c;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/roblox/platform/h;-><init>(Lb/w;Ld/c$a;)V

    .line 27
    invoke-static {}, Lcom/roblox/platform/g;->c()Lcom/roblox/platform/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/roblox/platform/h;->a(Lcom/roblox/platform/c;)Lcom/roblox/platform/e;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    invoke-static {}, Lcom/roblox/platform/g;->e()Lb/w;

    move-result-object v0

    goto :goto_0
.end method
