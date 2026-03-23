.class public Lcom/roblox/client/s/c$d;
.super Lcom/roblox/platform/http/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/client/s/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 577
    invoke-direct {p0}, Lcom/roblox/platform/http/c;-><init>()V

    .line 578
    iput-object p1, p0, Lcom/roblox/client/s/c$d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Lc/x;
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/roblox/client/s/c$d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/roblox/client/ae/r;->a(Landroid/content/Context;)V

    .line 584
    invoke-super {p0}, Lcom/roblox/platform/http/c;->a()Lc/x;

    move-result-object v0

    return-object v0
.end method
