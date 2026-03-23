.class Lcom/roblox/abtesting/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/abtesting/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/abtesting/a;->d(Lcom/roblox/abtesting/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/abtesting/a$a;

.field final synthetic b:Lcom/roblox/abtesting/a;


# direct methods
.method constructor <init>(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/roblox/abtesting/a$2;->b:Lcom/roblox/abtesting/a;

    iput-object p2, p0, Lcom/roblox/abtesting/a$2;->a:Lcom/roblox/abtesting/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/roblox/abtesting/a$2;->b:Lcom/roblox/abtesting/a;

    iget-object v1, p0, Lcom/roblox/abtesting/a$2;->a:Lcom/roblox/abtesting/a$a;

    invoke-static {v0, v1}, Lcom/roblox/abtesting/a;->a(Lcom/roblox/abtesting/a;Lcom/roblox/abtesting/a$a;)V

    .line 260
    return-void
.end method
