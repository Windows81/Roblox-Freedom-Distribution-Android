.class public Lcom/roblox/client/e/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/roblox/client/chat/a/m;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/roblox/client/chat/a/m;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/roblox/client/e/m;->a:Lcom/roblox/client/chat/a/m;

    .line 18
    iput p2, p0, Lcom/roblox/client/e/m;->b:I

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/roblox/client/chat/a/m;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/roblox/client/e/m;->a:Lcom/roblox/client/chat/a/m;

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/roblox/client/e/m;->b:I

    return v0
.end method
