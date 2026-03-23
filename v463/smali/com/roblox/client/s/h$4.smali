.class Lcom/roblox/client/s/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/login/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/s/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/roblox/client/s/h$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/s/h$c;

.field final synthetic b:Lcom/roblox/client/s/h;


# direct methods
.method constructor <init>(Lcom/roblox/client/s/h;Lcom/roblox/client/s/h$c;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/roblox/client/s/h$4;->b:Lcom/roblox/client/s/h;

    iput-object p2, p0, Lcom/roblox/client/s/h$4;->a:Lcom/roblox/client/s/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/roblox/client/s/h$4;->a:Lcom/roblox/client/s/h$c;

    invoke-interface {v0}, Lcom/roblox/client/s/h$c;->a()V

    return-void
.end method
