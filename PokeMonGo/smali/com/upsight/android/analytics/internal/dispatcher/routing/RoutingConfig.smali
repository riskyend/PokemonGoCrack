.class public Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
.super Ljava/lang/Object;
.source "RoutingConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$1;,
        Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;
    }
.end annotation


# instance fields
.field private mQueuesConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mQueueConfigs:Ljava/util/Map;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mQueuesConfigs:Ljava/util/Map;

    .line 83
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->mRoutes:Ljava/util/Map;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mRoutes:Ljava/util/Map;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;)V

    return-void
.end method

.method private areQueueConfigsValid()Z
    .registers 4

    .prologue
    .line 111
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mQueuesConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    .line 112
    .local v0, "dc":Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;->isValid()Z

    move-result v2

    if-nez v2, :cond_a

    .line 113
    :cond_1e
    const/4 v2, 0x0

    .line 117
    .end local v0    # "dc":Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    :goto_1f
    return v2

    :cond_20
    const/4 v2, 0x1

    goto :goto_1f
.end method

.method private areRoutesValid()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 125
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mRoutes:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 126
    .local v2, "route":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1a

    .line 138
    .end local v2    # "route":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_19
    return v5

    .line 128
    .restart local v2    # "route":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 129
    .local v3, "routeStep":Ljava/lang/String;
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mQueuesConfigs:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "trash"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    goto :goto_19

    .line 133
    .end local v3    # "routeStep":Ljava/lang/String;
    :cond_3b
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 134
    .local v4, "uniqueTestSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_b

    goto :goto_19

    .line 138
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "route":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "uniqueTestSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4b
    const/4 v5, 0x1

    goto :goto_19
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    if-ne p0, p1, :cond_5

    .line 150
    :cond_4
    :goto_4
    return v1

    .line 144
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 145
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 148
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    .line 150
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mQueuesConfigs:Ljava/util/Map;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mQueuesConfigs:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mRoutes:Ljava/util/Map;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mRoutes:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2a
    move v1, v2

    goto :goto_4
.end method

.method public getQueueConfigs()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mQueuesConfigs:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRouters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->mRoutes:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->areQueueConfigsValid()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->areRoutesValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
