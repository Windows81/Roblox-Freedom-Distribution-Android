.class Lcom/roblox/client/locale/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/locale/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/locale/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/locale/b;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/roblox/client/locale/b$1;->a:Lcom/roblox/client/locale/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/roblox/client/locale/c;
    .locals 1

    .line 51
    new-instance v0, Lcom/roblox/client/locale/d;

    invoke-direct {v0, p1}, Lcom/roblox/client/locale/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
