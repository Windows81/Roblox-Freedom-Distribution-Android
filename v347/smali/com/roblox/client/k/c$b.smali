.class public Lcom/roblox/client/k/c$b;
.super Lcom/roblox/client/k/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/k/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "b"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/roblox/client/k/c;


# direct methods
.method public constructor <init>(Lcom/roblox/client/k/c;)V
    .locals 3

    .prologue
    .line 134
    iput-object p1, p0, Lcom/roblox/client/k/c$b;->b:Lcom/roblox/client/k/c;

    .line 135
    const v0, 0x7f0e0100

    const v1, 0x7f070777

    const-string v2, "EVENTS_TAG"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/roblox/client/k/c$c;-><init>(Lcom/roblox/client/k/c;IILjava/lang/String;)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/k/c$b;->a:Z

    .line 136
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/roblox/client/k/c$b;->b:Lcom/roblox/client/k/c;

    invoke-static {v0}, Lcom/roblox/client/k/c;->a(Lcom/roblox/client/k/c;)I

    move-result v0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/k/c$b;->a:Z

    .line 151
    invoke-super {p0}, Lcom/roblox/client/k/c$c;->b()V

    .line 152
    iget-object v0, p0, Lcom/roblox/client/k/c$b;->b:Lcom/roblox/client/k/c;

    invoke-virtual {v0, p0}, Lcom/roblox/client/k/c;->a(Lcom/roblox/client/k/c$g;)V

    .line 153
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/roblox/client/k/c$b;->a:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/roblox/client/k/c$c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
