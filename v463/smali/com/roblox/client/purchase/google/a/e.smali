.class public Lcom/roblox/client/purchase/google/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/purchase/google/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/google/a/e$b;,
        Lcom/roblox/client/purchase/google/a/e$a;,
        Lcom/roblox/client/purchase/google/a/e$e;,
        Lcom/roblox/client/purchase/google/a/e$c;,
        Lcom/roblox/client/purchase/google/a/e$d;
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/lang/String;

.field h:Landroid/content/Context;

.field i:Lcom/a/b/a/a;

.field j:Landroid/content/ServiceConnection;

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:I

.field o:Landroid/os/Bundle;

.field p:Lcom/roblox/client/purchase/google/a/e$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->a:Z

    const-string v1, "IabHelper"

    .line 81
    iput-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    .line 84
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->c:Z

    .line 87
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->d:Z

    .line 90
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->e:Z

    .line 94
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    const-string v0, ""

    .line 98
    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    .line 177
    iput-object p2, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    .line 178
    iput p3, p0, Lcom/roblox/client/purchase/google/a/e;->n:I

    const-string p1, "IAB helper created."

    .line 179
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 3

    const-string v0, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v1, "/"

    .line 915
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    .line 925
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x3e8

    if-gt p0, v2, :cond_1

    rsub-int v0, p0, -0x3e8

    if-ltz v0, :cond_0

    .line 929
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 930
    aget-object p0, v1, v0

    return-object p0

    .line 933
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown IAB Helper Error"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ltz p0, :cond_3

    .line 936
    array-length v1, v0

    if-lt p0, v1, :cond_2

    goto :goto_0

    .line 940
    :cond_2
    aget-object p0, v0, p0

    return-object p0

    .line 937
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":Unknown"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 347
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .line 956
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    if-eqz v0, :cond_0

    return-void

    .line 957
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IabHelper.mService is null. Service not connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 958
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Billing service is disconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method a(Landroid/content/Intent;)I
    .locals 3

    .line 984
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Intent with no response code, assuming OK (known issue)"

    .line 986
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 989
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 990
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 992
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 993
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for intent response code."

    .line 996
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 998
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for intent response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/os/Bundle;)I
    .locals 3

    const-string v0, "RESPONSE_CODE"

    .line 964
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "Bundle with null response code, assuming OK (known issue)"

    .line 966
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 969
    :cond_0
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 970
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 972
    :cond_1
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 973
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p1, v0

    return p1

    :cond_2
    const-string v0, "Unexpected type for bundle response code."

    .line 976
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 977
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 978
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type for bundle response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lcom/roblox/client/purchase/google/a/g;Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Querying owned items, item type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    const-string v0, "queryPurchases"

    .line 1023
    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1028
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling getPurchases with continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1029
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    iget v4, p0, Lcom/roblox/client/purchase/google/a/e;->n:I

    iget-object v5, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2, v1}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1032
    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/os/Bundle;)I

    move-result v3

    .line 1033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Owned items response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 1035
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getPurchases() failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    return v3

    :cond_1
    const-string v3, "INAPP_PURCHASE_ITEM_LIST"

    .line 1038
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "INAPP_PURCHASE_DATA_LIST"

    .line 1039
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "INAPP_DATA_SIGNATURE_LIST"

    .line 1040
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_2

    .line 1045
    :cond_2
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1047
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1049
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    .line 1052
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1053
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1054
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1055
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1056
    iget-object v10, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    invoke-static {v10, v7, v8}, Lcom/roblox/client/purchase/google/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1057
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Sku is owned: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1058
    new-instance v9, Lcom/roblox/client/purchase/google/a/h;

    invoke-direct {v9, p2, v7, v8}, Lcom/roblox/client/purchase/google/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v9}, Lcom/roblox/client/purchase/google/a/h;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "BUG: empty/null token!"

    .line 1061
    invoke-virtual {p0, v8}, Lcom/roblox/client/purchase/google/a/e;->e(Ljava/lang/String;)V

    .line 1062
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase data: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1066
    :cond_3
    invoke-virtual {p1, v9}, Lcom/roblox/client/purchase/google/a/g;->a(Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_1

    :cond_4
    const-string v2, "Purchase signature verification **FAILED**. Not adding item."

    .line 1069
    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->e(Ljava/lang/String;)V

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   Purchase data: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   Signature: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    .line 1076
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1077
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuation token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 1078
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_6

    const/16 v0, -0x3eb

    :cond_6
    return v0

    :cond_7
    :goto_2
    const-string p1, "Bundle returned from getPurchases() doesn\'t contain required fields."

    .line 1041
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1
.end method

.method public a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/roblox/client/purchase/google/a/g;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Querying SKU details."

    .line 760
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    const-string v0, "querySkuDetails"

    .line 761
    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    invoke-virtual {p2, p1}, Lcom/roblox/client/purchase/google/a/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_1

    .line 765
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 766
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 767
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_2

    const-string p1, "queryPrices: nothing to do because there are no SKUs."

    .line 773
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    return v1

    .line 777
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ITEM_ID_LIST"

    .line 778
    invoke-virtual {p3, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 779
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    iget v2, p0, Lcom/roblox/client/purchase/google/a/e;->n:I

    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1, p3}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "DETAILS_LIST"

    .line 782
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 783
    invoke-virtual {p0, p3}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/os/Bundle;)I

    move-result p1

    if-eqz p1, :cond_3

    .line 785
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getSkuDetails() failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    return p1

    :cond_3
    const-string p1, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    .line 789
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    const/16 p1, -0x3ea

    return p1

    .line 794
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p3

    .line 797
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 798
    new-instance v2, Lcom/roblox/client/purchase/google/a/j;

    invoke-direct {v2, p1, v0}, Lcom/roblox/client/purchase/google/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got sku details: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p2, v2}, Lcom/roblox/client/purchase/google/a/g;->a(Lcom/roblox/client/purchase/google/a/j;)V

    goto :goto_1

    :cond_5
    return v1
.end method

.method public a(ZLjava/util/List;)Lcom/roblox/client/purchase/google/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/purchase/google/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/purchase/google/a/d;
        }
    .end annotation

    const/4 v0, 0x0

    .line 629
    invoke-virtual {p0, p1, p2, v0}, Lcom/roblox/client/purchase/google/a/e;->a(ZLjava/util/List;Ljava/util/List;)Lcom/roblox/client/purchase/google/a/g;

    move-result-object p1

    return-object p1
.end method

.method public a(ZLjava/util/List;Ljava/util/List;)Lcom/roblox/client/purchase/google/a/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/roblox/client/purchase/google/a/g;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/purchase/google/a/d;
        }
    .end annotation

    const-string p3, "subs"

    const-string v0, "inapp"

    .line 647
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    const-string v1, "queryInventory"

    .line 648
    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 649
    invoke-direct {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 651
    :try_start_0
    new-instance v1, Lcom/roblox/client/purchase/google/a/g;

    invoke-direct {v1}, Lcom/roblox/client/purchase/google/a/g;-><init>()V

    .line 652
    invoke-virtual {p0, v1, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Lcom/roblox/client/purchase/google/a/g;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    if-eqz p1, :cond_1

    .line 658
    invoke-virtual {p0, v0, v1, p2}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 660
    :cond_0
    new-instance p1, Lcom/roblox/client/purchase/google/a/d;

    const-string p2, "Error refreshing inventory (querying prices of items)."

    invoke-direct {p1, v0, p2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw p1

    .line 665
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->e:Z

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p0, v1, p3}, Lcom/roblox/client/purchase/google/a/e;->a(Lcom/roblox/client/purchase/google/a/g;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    .line 672
    invoke-virtual {p0, p3, v1, p2}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;Lcom/roblox/client/purchase/google/a/g;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 674
    :cond_2
    new-instance p2, Lcom/roblox/client/purchase/google/a/d;

    const-string p3, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {p2, p1, p3}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw p2

    .line 668
    :cond_3
    new-instance p1, Lcom/roblox/client/purchase/google/a/d;

    const-string p2, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {p1, v0, p2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v1

    .line 654
    :cond_5
    new-instance p1, Lcom/roblox/client/purchase/google/a/d;

    const-string p2, "Error refreshing inventory (querying owned items)."

    invoke-direct {p1, v2, p2}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 685
    new-instance p2, Lcom/roblox/client/purchase/google/a/d;

    const/16 p3, -0x3ea

    const-string v0, "Error parsing JSON response while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 682
    new-instance p2, Lcom/roblox/client/purchase/google/a/d;

    const/16 p3, -0x3e9

    const-string v0, "Remote exception while refreshing inventory."

    invoke-direct {p2, p3, v0, p1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method a()V
    .locals 2

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ending async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    const-string v0, ""

    .line 1014
    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1015
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V
    .locals 7

    const-string v3, "inapp"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 391
    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V
    .locals 13

    move-object v1, p0

    move-object v9, p2

    move-object/from16 v0, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 424
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    const-string v2, "launchPurchaseFlow"

    .line 425
    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->b(Ljava/lang/String;)V

    const-string v2, "subs"

    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/roblox/client/purchase/google/a/e;->e:Z

    if-nez v2, :cond_1

    .line 431
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3f1

    const-string v3, "Subscriptions are not available."

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    if-eqz v11, :cond_0

    .line 435
    invoke-interface {v11, v0, v12}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_0
    return-void

    .line 440
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Billing Api Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/roblox/client/purchase/google/a/e;->n:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rbx.purchaseflow"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Constructing buy intent for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 445
    invoke-static/range {p6 .. p6}, Lcom/roblox/client/x;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 446
    iget-object v3, v1, Lcom/roblox/client/purchase/google/a/e;->o:Landroid/os/Bundle;

    if-nez v3, :cond_2

    .line 447
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, v1, Lcom/roblox/client/purchase/google/a/e;->o:Landroid/os/Bundle;

    .line 449
    :cond_2
    iget-object v3, v1, Lcom/roblox/client/purchase/google/a/e;->o:Landroid/os/Bundle;

    const-string v4, "accountId"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v2, v1, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    iget v3, v1, Lcom/roblox/client/purchase/google/a/e;->n:I

    iget-object v4, v1, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v8, v1, Lcom/roblox/client/purchase/google/a/e;->o:Landroid/os/Bundle;

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-interface/range {v2 .. v8}, Lcom/a/b/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 453
    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/os/Bundle;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 457
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const-string v2, "Unable to buy item"

    invoke-direct {v0, v3, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_3

    .line 459
    invoke-interface {v11, v0, v12}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_3
    return-void

    :cond_4
    const-string v3, "BUY_INTENT"

    .line 464
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching buy intent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Request code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 466
    iput v10, v1, Lcom/roblox/client/purchase/google/a/e;->k:I

    .line 467
    iput-object v11, v1, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    .line 468
    iput-object v0, v1, Lcom/roblox/client/purchase/google/a/e;->l:Ljava/lang/String;

    .line 469
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    .line 471
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 472
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v2, p1

    move/from16 v4, p4

    .line 469
    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    if-eqz v11, :cond_5

    .line 475
    invoke-interface/range {p5 .. p5}, Lcom/roblox/client/purchase/google/a/e$c;->a()V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 507
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 509
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3f4

    const-string v3, "UnsupportedEncodingException while starting purchase flow"

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_5

    .line 511
    invoke-interface {v11, v0, v12}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchAlgorithmException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 498
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 500
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3f3

    const-string v3, "NoSuchAlgorithmException while starting purchase flow"

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_5

    .line 502
    invoke-interface {v11, v0, v12}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 488
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 489
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 491
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3e9

    const-string v3, "Remote exception while starting purchase flow"

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_5

    .line 493
    invoke-interface {v11, v0, v12}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 480
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    .line 482
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/16 v2, -0x3ec

    const-string v3, "Failed to send intent."

    invoke-direct {v0, v2, v3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    if-eqz v11, :cond_5

    .line 484
    invoke-interface {v11, v0, v12}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/roblox/client/purchase/google/a/e$d;)V
    .locals 3

    .line 239
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 240
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->c:Z

    if-nez v0, :cond_2

    const-string v0, "Starting in-app billing setup."

    .line 245
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/roblox/client/purchase/google/a/e$1;

    invoke-direct {v0, p0, p1}, Lcom/roblox/client/purchase/google/a/e$1;-><init>(Lcom/roblox/client/purchase/google/a/e;Lcom/roblox/client/purchase/google/a/e$d;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->j:Landroid/content/ServiceConnection;

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    .line 306
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/roblox/client/purchase/google/a/e;->j:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 317
    new-instance v0, Lcom/roblox/client/purchase/google/a/f;

    const/4 v1, 0x3

    const-string v2, "Billing service unavailable on device."

    invoke-direct {v0, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/roblox/client/purchase/google/a/e$d;->a(Lcom/roblox/client/purchase/google/a/f;)V

    :cond_1
    :goto_0
    return-void

    .line 241
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "IAB helper is already set up."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/roblox/client/purchase/google/a/e$e;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 748
    invoke-virtual {p0, v0, v1, p1}, Lcom/roblox/client/purchase/google/a/e;->a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V

    return-void
.end method

.method a(Lcom/roblox/client/purchase/google/a/h;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/roblox/client/purchase/google/a/d;
        }
    .end annotation

    .line 815
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    const-string v0, "consume"

    .line 816
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 817
    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 819
    iget-object v0, p1, Lcom/roblox/client/purchase/google/a/h;->a:Ljava/lang/String;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 825
    :try_start_0
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->f()Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-virtual {p1}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    .line 827
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Consuming sku: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 834
    iget-object v2, p0, Lcom/roblox/client/purchase/google/a/e;->i:Lcom/a/b/a/a;

    iget v3, p0, Lcom/roblox/client/purchase/google/a/e;->n:I

    iget-object v4, p0, Lcom/roblox/client/purchase/google/a/e;->h:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v0}, Lcom/a/b/a/a;->b(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully consumed sku: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    return-void

    .line 839
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error consuming consuming sku "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 840
    new-instance v2, Lcom/roblox/client/purchase/google/a/d;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error consuming sku "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v2

    .line 828
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t consume "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". No token."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 829
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const/16 v2, -0x3ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 844
    new-instance v1, Lcom/roblox/client/purchase/google/a/d;

    const/16 v2, -0x3e9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 820
    :cond_2
    new-instance v0, Lcom/roblox/client/purchase/google/a/d;

    const/16 v1, -0x3f2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Items of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/roblox/client/purchase/google/a/h;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can\'t be consumed."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/roblox/client/purchase/google/a/d;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/roblox/client/purchase/google/a/h;Lcom/roblox/client/purchase/google/a/e$a;)V
    .locals 1

    .line 884
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    const-string v0, "consumeAsync"

    .line 885
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 887
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 888
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 889
    invoke-virtual {p0, v0, p2, p1}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Lcom/roblox/client/purchase/google/a/e$b;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .line 947
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 948
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Lcom/roblox/client/purchase/google/a/e$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/roblox/client/purchase/google/a/h;",
            ">;",
            "Lcom/roblox/client/purchase/google/a/e$a;",
            "Lcom/roblox/client/purchase/google/a/e$b;",
            ")V"
        }
    .end annotation

    .line 1086
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    const-string v0, "consume"

    .line 1087
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->b(Ljava/lang/String;)V

    .line 1088
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/roblox/client/purchase/google/a/e$3;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/purchase/google/a/e$3;-><init>(Lcom/roblox/client/purchase/google/a/e;Ljava/util/List;Lcom/roblox/client/purchase/google/a/e$a;Landroid/os/Handler;Lcom/roblox/client/purchase/google/a/e$b;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1117
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 213
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    .line 214
    iput-boolean p1, p0, Lcom/roblox/client/purchase/google/a/e;->a:Z

    return-void
.end method

.method public a(ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/roblox/client/purchase/google/a/e$e;",
            ")V"
        }
    .end annotation

    .line 716
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 717
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    const-string v0, "queryInventoryAsync"

    .line 718
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 719
    invoke-direct {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    const-string v0, "refresh inventory"

    .line 720
    invoke-virtual {p0, v0}, Lcom/roblox/client/purchase/google/a/e;->b(Ljava/lang/String;)V

    .line 721
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/roblox/client/purchase/google/a/e$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/roblox/client/purchase/google/a/e$2;-><init>(Lcom/roblox/client/purchase/google/a/e;ZLjava/util/List;Lcom/roblox/client/purchase/google/a/e$e;Landroid/os/Handler;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 744
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)Z
    .locals 7

    .line 531
    iget v0, p0, Lcom/roblox/client/purchase/google/a/e;->k:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/roblox/client/purchase/google/a/e;->b()V

    const-string p1, "handleActivityResult"

    .line 536
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->a(Ljava/lang/String;)V

    .line 537
    invoke-direct {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->f(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p0}, Lcom/roblox/client/purchase/google/a/e;->a()V

    const/16 p1, -0x3ea

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_2

    const-string p2, "Null data in IAB activity result."

    .line 543
    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 544
    new-instance p2, Lcom/roblox/client/purchase/google/a/f;

    const-string p3, "Null data in IAB result"

    invoke-direct {p2, p1, p3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 545
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p1, :cond_1

    .line 546
    invoke-interface {p1, p2, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_1
    return v0

    .line 551
    :cond_2
    invoke-virtual {p0, p3}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/content/Intent;)I

    move-result v3

    const-string v4, "INAPP_PURCHASE_DATA"

    .line 552
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "INAPP_DATA_SIGNATURE"

    .line 553
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    if-ne p2, v6, :cond_9

    if-nez v3, :cond_9

    const-string p2, "Successful resultcode from purchase activity."

    .line 556
    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 557
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase data: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 558
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data signature: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Extras: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 560
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected item type: "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/roblox/client/purchase/google/a/e;->l:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    if-eqz v4, :cond_7

    if-nez v5, :cond_3

    goto :goto_0

    .line 574
    :cond_3
    :try_start_0
    new-instance p2, Lcom/roblox/client/purchase/google/a/h;

    iget-object p3, p0, Lcom/roblox/client/purchase/google/a/e;->l:Ljava/lang/String;

    invoke-direct {p2, p3, v4, v5}, Lcom/roblox/client/purchase/google/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Lcom/roblox/client/purchase/google/a/h;->d()Ljava/lang/String;

    move-result-object p3

    .line 578
    iget-object v3, p0, Lcom/roblox/client/purchase/google/a/e;->m:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/roblox/client/purchase/google/a/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purchase signature verification FAILED for sku "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcom/roblox/client/purchase/google/a/f;

    const/16 v3, -0x3eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Signature verification failed for sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, v3, p3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 581
    iget-object p3, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p3, :cond_4

    .line 582
    iget-object p3, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {p3, v1, p2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_4
    return v0

    :cond_5
    const-string p3, "Purchase signature successfully verified."

    .line 586
    invoke-virtual {p0, p3}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p1, :cond_c

    .line 599
    new-instance p3, Lcom/roblox/client/purchase/google/a/f;

    const-string v2, "Success"

    invoke-direct {p3, v1, v2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3, p2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto/16 :goto_1

    :catch_0
    move-exception p2

    const-string p3, "Failed to parse purchase data."

    .line 589
    invoke-virtual {p0, p3}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 591
    new-instance p2, Lcom/roblox/client/purchase/google/a/f;

    invoke-direct {p2, p1, p3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 592
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p1, :cond_6

    .line 593
    invoke-interface {p1, p2, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_6
    return v0

    :cond_7
    :goto_0
    const-string p1, "BUG: either purchaseData or dataSignature is null."

    .line 563
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 565
    new-instance p1, Lcom/roblox/client/purchase/google/a/f;

    const/16 p2, -0x3f0

    const-string p3, "IAB returned null purchaseData or dataSignature"

    invoke-direct {p1, p2, p3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 566
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p2, :cond_8

    .line 567
    invoke-interface {p2, p1, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_8
    return v0

    :cond_9
    if-ne p2, v6, :cond_a

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 605
    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p1, :cond_c

    .line 606
    new-instance p1, Lcom/roblox/client/purchase/google/a/f;

    const-string p2, "Problem purchashing item."

    invoke-direct {p1, v3, p2}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 607
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    invoke-interface {p2, p1, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_1

    :cond_a
    if-nez p2, :cond_b

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Purchase canceled - Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    .line 612
    new-instance p1, Lcom/roblox/client/purchase/google/a/f;

    const/16 p2, -0x3ed

    const-string p3, "User canceled."

    invoke-direct {p1, p2, p3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 613
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p2, :cond_c

    .line 614
    invoke-interface {p2, p1, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    goto :goto_1

    .line 618
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Purchase failed. Result code: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Response: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    invoke-static {v3}, Lcom/roblox/client/purchase/google/a/e;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 618
    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->d(Ljava/lang/String;)V

    .line 620
    new-instance p1, Lcom/roblox/client/purchase/google/a/f;

    const/16 p2, -0x3ee

    const-string p3, "Unknown purchase response."

    invoke-direct {p1, p2, p3}, Lcom/roblox/client/purchase/google/a/f;-><init>(ILjava/lang/String;)V

    .line 621
    iget-object p2, p0, Lcom/roblox/client/purchase/google/a/e;->p:Lcom/roblox/client/purchase/google/a/e$c;

    if-eqz p2, :cond_c

    .line 622
    invoke-interface {p2, p1, v2}, Lcom/roblox/client/purchase/google/a/e$c;->a(Lcom/roblox/client/purchase/google/a/f;Lcom/roblox/client/purchase/google/a/h;)V

    :cond_c
    :goto_1
    return v0
.end method

.method public b(Landroid/app/Activity;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V
    .locals 7

    const-string v3, "subs"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 401
    invoke-virtual/range {v0 .. v6}, Lcom/roblox/client/purchase/google/a/e;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/roblox/client/purchase/google/a/e$c;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 3

    .line 1003
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    if-nez v0, :cond_0

    .line 1007
    iput-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1008
    iput-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->f:Z

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting async operation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/roblox/client/purchase/google/a/e;->c(Ljava/lang/String;)V

    return-void

    .line 1004
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start async operation ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") because another async operation("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/roblox/client/purchase/google/a/e;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is in progress."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    .line 1121
    iget-boolean v0, p0, Lcom/roblox/client/purchase/google/a/e;->a:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/roblox/client/purchase/google/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
