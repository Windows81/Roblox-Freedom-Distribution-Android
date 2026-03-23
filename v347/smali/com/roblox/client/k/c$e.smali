.class public Lcom/roblox/client/k/c$e;
.super Lcom/roblox/client/k/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/k/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c;)V
    .locals 3

    .prologue
    .line 120
    iput-object p1, p0, Lcom/roblox/client/k/c$e;->a:Lcom/roblox/client/k/c;

    .line 121
    const v0, 0x7f0e000c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    .line 122
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/roblox/client/j/b;

    iget-object v1, p0, Lcom/roblox/client/k/c$e;->a:Lcom/roblox/client/k/c;

    invoke-direct {v0, v1}, Lcom/roblox/client/j/b;-><init>(Lcom/roblox/client/m;)V

    invoke-virtual {v0}, Lcom/roblox/client/j/b;->b()V

    .line 127
    return-void
.end method
