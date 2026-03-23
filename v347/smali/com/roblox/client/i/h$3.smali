.class Lcom/roblox/client/i/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/login/d$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/i/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/i/h$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/i/h$e;

.field final synthetic b:Lcom/roblox/client/i/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/i/h;Lcom/roblox/client/i/h$e;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/roblox/client/i/h$3;->b:Lcom/roblox/client/i/h;

    iput-object p2, p0, Lcom/roblox/client/i/h$3;->a:Lcom/roblox/client/i/h$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/roblox/client/i/h$3;->a:Lcom/roblox/client/i/h$e;

    invoke-interface {v0}, Lcom/roblox/client/i/h$e;->a()V

    .line 237
    return-void
.end method
