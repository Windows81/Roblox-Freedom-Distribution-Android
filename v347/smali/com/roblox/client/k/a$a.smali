.class public Lcom/roblox/client/k/a$a;
.super Lcom/roblox/client/k/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k/a;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/a;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/roblox/client/k/a$a;->a:Lcom/roblox/client/k/a;

    .line 30
    const v0, 0x7f0e0116

    const v1, 0x7f07077e

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/roblox/client/q/d;->a()Lcom/roblox/client/q/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/d;->h()Lcom/roblox/client/q/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/client/q/a;->b()I

    move-result v0

    return v0
.end method
