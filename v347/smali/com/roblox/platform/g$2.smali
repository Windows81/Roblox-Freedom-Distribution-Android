.class final Lcom/roblox/platform/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/platform/g;->a(Lb/m;II)Lb/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    const-string v0, "rbx.http"

    invoke-static {v0}, Lcom/roblox/platform/d;->a(Ljava/lang/String;)Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/roblox/platform/d$b;->a()Lcom/roblox/platform/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/platform/d$b;->a(Ljava/lang/String;)I

    .line 131
    return-void
.end method
